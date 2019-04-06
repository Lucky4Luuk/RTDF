local Utils = {}

function Utils.type_error_check(var, type_check)
  if var.type then
    if var.type ~= type_check then
      --Throw error
      error("Expected variable of type "..tostring(type_check)..", but found variable of type "..tostring(var.type))
    end
  end

  if type(var) ~= type_check then
    --Throw error
    error("Expected variable of type "..tostring(type_check)..", but found variable of type "..tostring(type(var)))
  end

  return var
end

return Utils
