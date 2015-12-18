# encoding: utf-8
Pry.config.prompt_name = Rails.application.class.parent_name.underscore.dasherize
unless Rails.env.development?
  old_prompt = Pry.config.prompt

  if Rails.env.production?

    env = "\001\e[0;31m\002#{Rails.env.upcase}\001\e[0m\002" # 紅色 的 env 名稱

  else
    env = "\001\e[0;33m\002#{Rails.env.upcase}\001\e[0m\002" # 黃色 的 env 名稱

  end

  Pry.config.prompt = [
    proc { |*a| "#{env} #{old_prompt.first.call(*a)}"  },
    proc { |*a| "#{env} #{old_prompt.second.call(*a)}" }
  ]
end
