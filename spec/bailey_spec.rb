require 'spec_helper'

describe(Jekyll::Converters::Bailey) do
  let(:configuration) { Jekyll::Configuration::DEFAULTS }
  let(:converter) do
    Jekyll::Converters::Bailey.new(configuration)
  end
  let(:bailey_content) do
    <<-BAILEY
iceCreamsEatenToday = 0
for i in "icecream"
  iceCreamsEatenToday += i

if iceCreamsEatenToday < 5
  console.log("To bad for you")

iceCreamType = (id) ->
  return iceCreamTypes[id]

BAILEY
  end
  let(:js_content) do
    <<-JS

var iceCreamsEatenToday = 0;
var __a1 = "icecream";
var __l1 = __a1.length;
for (var __i1 = 0; __i1 < __l1; __i1++) {
    var i = __a1[__i1];
    iceCreamsEatenToday += i;
}

if (iceCreamsEatenToday < 5) {
    console.log("To bad for you");
}

var iceCreamType = function(id) {
    return iceCreamTypes[id];
};
JS
  end

  it "matches .bs files" do
    expect(converter.matches(".bs")).to be_true
  end

  it "always outputs the .js file extension" do
    expect(converter.output_ext(".always-js-dont-matter")).to eql(".js")
  end

  it "produces Javascript" do
    expect(converter.convert(bailey_content)).to eql(js_content)
  end

end
