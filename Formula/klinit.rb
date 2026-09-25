# Template: the release workflow fills tsara27, 0.2.0 and 11328acede202546e9f8b01bc11af2c6cb93236d1af1be5e40abbd1b05f71b62 and pushes the result
# to the homebrew-tap repository as Formula/klinit.rb.
class Klinit < Formula
  desc "Clean up your Mac from the command line"
  homepage "https://github.com/tsara27/klinit"
  url "https://github.com/tsara27/klinit/releases/download/v0.2.0/klinit-0.2.0-macos-universal.tar.gz"
  sha256 "11328acede202546e9f8b01bc11af2c6cb93236d1af1be5e40abbd1b05f71b62"
  version "0.2.0"

  def install
    bin.install "klinit"
    generate_completions_from_executable(bin/"klinit", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klinit --version")
  end
end
