require 'awspec'

describe route53_hosted_zone('cdicohorts-thirteen.') do
  it { should exist }
end

describe route53_hosted_zone('nonprod-us-east-2.cdicohorts-thirteen.') do
  it { should exist }
end

describe route53_hosted_zone('dev.cdicohorts-thirteen.') do
  it { should exist }
end

describe route53_hosted_zone('qa.cdicohorts-thirteen.') do
  it { should exist }
end

describe route53_hosted_zone('prod.cdicohorts-thirteen.') do
  it { should exist}
end