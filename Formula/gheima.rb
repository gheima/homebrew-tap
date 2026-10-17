# Homebrew formula for the standalone gheima CLI. Rendered per release by
# scripts/render-formula.sh from SHA256SUMS; goes in the tap repository as Formula/gheima.rb.
class Gheima < Formula
  desc "Deploy and manage apps, databases and storage on Gheima"
  homepage "https://gheima.ma"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gheima/cli/releases/download/v0.6.0/gheima-darwin-arm64"
      sha256 "9e643b9c0af36cb5bfe85e58113eaa39f8ba30b6ecabd2b4a962867dfedc232c"
    end
    on_intel do
      url "https://github.com/gheima/cli/releases/download/v0.6.0/gheima-darwin-x64"
      sha256 "fdf6f559b2e974f2a217d7cd83cc37fc5edfe134e3aa7f25e28a968b3939c601"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gheima/cli/releases/download/v0.6.0/gheima-linux-arm64"
      sha256 "00373aae16c0818921562bb294f15ae032a154bf3be25530cde945bc8402c618"
    end
    on_intel do
      url "https://github.com/gheima/cli/releases/download/v0.6.0/gheima-linux-x64"
      sha256 "186f2e6fabfb413392325d60cb94637bea79868f0d173a204f0bdaeda4735478"
    end
  end

  def install
    bin.install Dir["gheima-*"].first => "gheima"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/gheima --version").strip
  end
end
