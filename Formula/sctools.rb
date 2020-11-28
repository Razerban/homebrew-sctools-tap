class Sctools < Formula
  desc "Tools for Soarer's Converter"
  homepage "https://github.com/razerbann/sctools"
  url "https://github.com/razerbann/sctools/archive/v1.20.tar.gz"
  sha256 "70bdc66ea36c0882d55710d5896b7548e95c105bf7588384880442b89a9291ed"

  def install
    Dir.chdir("build/macosx")
    system "make"
    bin.install "../../bin/scas"
    bin.install "../../bin/scboot"
    bin.install "../../bin/scdis"
    bin.install "../../bin/scinfo"
    bin.install "../../bin/scrd"
    bin.install "../../bin/scwr"
  end

  test do
    assert_match "usage", shell_output("${bin}/scas")
    assert_match "looking for", shell_output("${bin}/scboot")
    assert_match "usage", shell_output("${bin}/scdis")
    assert_match "looking for", shell_output("${bin}/scinfo")
    assert_match "usage", shell_output("${bin}/scrd")
    assert_match "usage", shell_output("${bin}/scwr")
  end
end

