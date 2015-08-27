Formbuilder.registerField 'group_rating',

  order: 53

  view: """
    <% for (i in (rf.get(Formbuilder.options.mappings.OPTIONS) || [])) { %>
      <div class="line">
        <label class='fb-option'>
          <p>
              <%= rf.get(Formbuilder.options.mappings.OPTIONS)[i].label %>
              <br>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
          </p>
        </label>
      </div>
    <% } %>
    <button class="target hanging"
            data-target = "out"
            data-target-index = "0"
    ></button>
  """

  edit: "
    <%= Formbuilder.templates['edit/options']() %>
  "

  addButton: """
    <span class="symbol"><span class="fa fa-star"></span></span> Group Rating
  """

  defaultAttributes: (attrs) ->
    # @todo
    attrs.field_options.options = [
      label: "Field One Goes here",
      checked: false
    ,
      label: "Field Two Goes here",
      checked: false
    ]

    attrs