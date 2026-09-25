# Template: the release workflow fills tsara27, 0.2.1 and 055354d783e2b577076380711ecf7db57ae90b91aa123f5e305bd55dba05a2aa and pushes the result
# to the homebrew-tap repository as Formula/klinit.rb.
class Klinit < Formula
  desc "Clean up your Mac from the command line"
  homepage "https://github.com/tsara27/klinit"
  url "https://github.com/tsara27/klinit/releases/download/v0.2.1/klinit-0.2.1-macos-universal.tar.gz"
  sha256 "055354d783e2b577076380711ecf7db57ae90b91aa123f5e305bd55dba05a2aa"
  version "0.2.1"

  def install
    bin.install "klinit"
    generate_completions_from_executable(bin/"klinit", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klinit --version")
  end
end
