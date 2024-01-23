---@diagnostic disable: undefined-global, lowercase-global
function opencc_emoji_filter(input)
  for cand in input:iter() do
    if cand:get_dynamic_type() == "Shadow" then
      yield(cand)
    end
  end
end
