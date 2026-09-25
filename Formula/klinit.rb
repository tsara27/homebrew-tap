# Template: the release workflow fills tsara27, 0.0.1-test and 0525a992bc99aeef658b2bb879ec482b1a7169df6efe9153ae45689f32207fb5 and pushes the result
# to the homebrew-tap repository as Formula/klinit.rb.
class Klinit < Formula
  desc "Clean up your Mac from the command line"
  homepage "https://github.com/tsara27/klinit"
  url "https://github.com/tsara27/klinit/releases/download/v0.0.1-test/klinit-0.0.1-test-macos-universal.tar.gz"
  sha256 "0525a992bc99aeef658b2bb879ec482b1a7169df6efe9153ae45689f32207fb5"
  version "0.0.1-test"

  def install
    bin.install "klinit"
    generate_completions_from_executable(bin/"klinit", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klinit --version")
  end
end
