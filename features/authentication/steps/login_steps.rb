Given %r{разлогиниваюсь$}i do
  Допустим %{захожу по адресу /logout}
end

Given %r{не залогинен$}i do
  Допустим %{я разлогиниваюсь}
end

Then %r{должен быть залогинен как ([^/\s]+)}i do |email|  
  То %{я захожу по адресу /dashboard}  
  И %{должен увидеть "#{email}"}
end

Then %r{не должен быть залогинен$}i do  
  То %{я захожу по адресу /dashboard}  
  И %{должен увидеть "login"}
end