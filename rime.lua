---@diagnostic disable: undefined-global, lowercase-global
function opencc_emoji_filter(input, env)
  local on = env.engine.context:get_option("emoji")

  for cand in input:iter() do
    if not on or cand:get_dynamic_type() == "Shadow" then
      yield(cand)
    end
  end
end
