class Application

  def call(env)
    resp = Rack::Response.new

    a = Kernel.rand(1..20)
    b = Kernel.rand(1..20)
    c = Kernel.rand(1..20)

    resp.write "#{a}, #{b}, #{c}"
    if a == b && b == c
      resp.write "You Win"
    else
      resp.write "You Lose"
    end
    resp.finish
  end

end
