require File.join(File.dirname(__FILE__), '..', 'spec_helper')

describe Weary::HTTPVerb do
  before do
    @test = Weary::HTTPVerb.new("Get")
  end
  
  it 'should set the verb' do
    @test.verb.should == "Get"
  end
  
  it 'should normalize' do
    @test.normalize.should == :get
  end
  
  it 'should know what net/http class to request with' do
    @test.request_class.should == Net::HTTP::Get
  end
  
end