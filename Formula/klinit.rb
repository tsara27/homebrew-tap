# Template: the release workflow fills tsara27, 0.1.0 and 242f7abc7bd1f7630a90a52a69f6587b55133642b35e71042abdfffb7d30e22b and pushes the result
# to the homebrew-tap repository as Formula/klinit.rb.
class Klinit < Formula
  desc "Clean up your Mac from the command line"
  homepage "https://github.com/tsara27/klinit"
  url "https://github.com/tsara27/klinit/releases/download/v0.1.0/klinit-0.1.0-macos-universal.tar.gz"
  sha256 "242f7abc7bd1f7630a90a52a69f6587b55133642b35e71042abdfffb7d30e22b"
  version "0.1.0"

  def install
    bin.install "klinit"
    generate_completions_from_executable(bin/"klinit", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klinit --version")
  end
end
