require "./lib/cipher"

describe "#caesar_cipher" do
  it "returns a string with each letter shifted to the left by the number" do
    expect(caesar_cipher("HELLO world", 3)).to eql("KHOOR zruog")
  end

  it "loops back to the start of alphabet if it goes past z" do
    expect(caesar_cipher("Zimbabwe zIMBABWE", 4)).to eql("Dmqfefai dMQFEFAI")
  end

  it "accepts a number greater than 26" do
    expect(caesar_cipher("Zimbabwe", 30)).to eql("Dmqfefai")
  end

  it "ignores non-alphabet characters" do
    expect(caesar_cipher("Hello World 12345!!!!*-+=?/|\[]{}", 3)).to eql("Khoor Zruog 12345!!!!*-+=?/|\[]{}")
  end
end