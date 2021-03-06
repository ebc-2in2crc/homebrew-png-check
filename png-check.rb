# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class PngCheck < Formula
  desc "PNG ファイルのカラータイプと透過設定のチェック"
  homepage "https://github.com/ebc-2in2crc/png-check"
  url "https://raw.githubusercontent.com/ebc-2in2crc/png-check/master/png-check"
  sha256 "266724707a3ea39ceec39a424ead32713682565b3048ad83abe9cf8bbbfc784a"
  depends_on "imagemagick"

  def install
	bin.install "png-check"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test png`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
	system "#{bin}/png-check", "--version"
  end
end
