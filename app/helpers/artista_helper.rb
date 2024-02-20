module ArtistaHelper
  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    onclick_script = "add_fields(this, '#{association}', '#{j(fields.gsub("\n", ""))}')"
    link_to(name, 'javascript:void(0);', class: "add_fields", onclick: onclick_script, data: { id: id })
  end

  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to(name, 'javascript:void(0);', class: "remove_fields")
  end

end
