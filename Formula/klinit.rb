# Template: the release workflow fills tsara27, 0.2.2 and d2a536743fc081c2488121e6ca9000a6d7567b2aeeb3d031b0162535ca49e03e and pushes the result
# to the homebrew-tap repository as Formula/klinit.rb.
class Klinit < Formula
  desc "Clean up your Mac from the command line"
  homepage "https://github.com/tsara27/klinit"
  url "https://github.com/tsara27/klinit/releases/download/v0.2.2/klinit-0.2.2-macos-universal.tar.gz"
  sha256 "d2a536743fc081c2488121e6ca9000a6d7567b2aeeb3d031b0162535ca49e03e"
  version "0.2.2"

  def install
    bin.install "klinit"
    generate_completions_from_executable(bin/"klinit", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klinit --version")
  end
end
