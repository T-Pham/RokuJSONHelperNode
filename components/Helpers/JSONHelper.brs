'parameter params: roAssociativeArray
'  json: roAssociativeArray or roArray
'  path: roArray of roString and roInt
'return: roAssociativeArray
'  value: Object
'  error: Boolean
function get(params as Object) as Object
  if params = invalid
    return {value: invalid, error: true}
  end if

  json = params.json
  path = params.path

  if type(path) <> "roArray"
    return {value: invalid, error: true}
  end if

  for each key in path
    if (type(key) = "roInt" and type(json) = "roArray") or (type(key) = "roString" and type(json) = "roAssociativeArray")
      json = json[key]
    else
      return {value: invalid, error: true}
    end if
  end for

  return {value: json, error: false}
end function
