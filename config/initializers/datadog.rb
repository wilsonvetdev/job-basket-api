Datadog.configure do |c|
    c.env = 'prod'
    c.service = 'save-applications'
    c.sampling.default_rate = 1.0
  
    c.use :rails
  end