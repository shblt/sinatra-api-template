module ApiHelper
  def json_out(data)
    JSON.pretty_generate(JSON.load(data.to_json))
  end

  def base_url
    @base_url ||= "#{request.env['rack.url_scheme']}://#{request.env['HTTP_HOST']}"
  end

end
