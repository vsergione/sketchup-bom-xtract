def collect_components_recursively(entities, result = [])
  entities.each do |entity|
    if entity.is_a?(Sketchup::ComponentInstance)
      result << entity
      collect_components_recursively(entity.definition.entities, result)
    elsif entity.is_a?(Sketchup::Group)
      collect_components_recursively(entity.entities, result)
    end
  end
  result
end

def get_component_dimensions_mm(component)
  bbox = component.bounds
  w = (bbox.width  * 25.4).round
  h = (bbox.height * 25.4).round
  d = (bbox.depth  * 25.4).round
  [w, h, d]
end

def group_components_by_signature(components)
  grouped = Hash.new { |h, k| h[k] = [] }

  components.each do |component|
    name = component.definition.name.strip
    tag = component.layer ? component.layer.name : "(no layer)"
    w, h, d = get_component_dimensions_mm(component)
    key = [name, tag, w, h, d]
    grouped[key] << component
  end

  grouped
end

def print_grouped_component_csv_report(grouped)
  puts "Name,Layer,Width (mm),Height (mm),Depth (mm),Quantity"
  grouped.each do |(name, tag, w, h, d), instances|
    puts "#{name},#{tag},#{w},#{h},#{d},#{instances.size}"
  end
end

# Run the script
model = Sketchup.active_model
all_components = collect_components_recursively(model.entities)
grouped = group_components_by_signature(all_components)
print_grouped_component_csv_report(grouped)
