class EnvConfig
  attr_accessor :env, :yaml, :protocol, :subdomain, :domain, :port

  def initialize
    @env      = (ENV["ENV"] || "development")
    @protocol = yaml[env].fetch("protocol", "http")
    @domain   = yaml[env].fetch("domain")
    @port     = yaml[env].fetch("port", nil)
  end

  def yaml
    @yaml ||= YAML.load_file(File.expand_path("../../../config/env.yml", __FILE__))
  end

  def protocol=(value)
    @protocol = value
    reflect!
  end

  def subdomain=(value)
    @subdomain = value
    reflect!
  end

  def domain=(value)
    @domain = value
    reflect!
  end

  def port=(value)
    @port = value
    reflect!
  end

  def app_host
    host = "#{protocol}://"
    host << "#{subdomain}." unless subdomain.nil?
    host << domain
    host << ":#{port.to_s}" unless [nil, 0, 25, 443].any?{|x| x == port }
  end

  def reflect!
    Capybara.app_host = app_host
  end

end
