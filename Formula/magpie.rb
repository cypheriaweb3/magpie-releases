class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.414/magpie-cli-darwin-arm64"
      sha256 "a778b33db3cc8d7beb79c599f22a5376cafebc91af57132cd323a0c345f69579"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.414/magpie-cli-darwin-amd64"
      sha256 "2971574737f64bf19f8411e48f2bd9ba60af2ee706cd712417fefda91fa880d4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.414/magpie-cli-linux-arm64"
      sha256 "6a3076d7b0a6ddf4fe1f9c7f9a3b0535644197b65df67a2c4792ce6c8c2cf9bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.414/magpie-cli-linux-amd64"
      sha256 "b7679625a0c6f156e6890498e81b03942d3a93757c7920a013482750c93f9c8b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
