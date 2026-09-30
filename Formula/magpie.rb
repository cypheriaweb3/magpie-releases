class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.483/magpie-cli-darwin-arm64"
      sha256 "5ad11a4d1496d4e131e229fe84a334499e96bc2bd43cefe24b9087c48606090c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.483/magpie-cli-darwin-amd64"
      sha256 "490471801db299f92dcda9c743813b6a14386f8155a8b4ff0bc502b832c4510a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.483/magpie-cli-linux-arm64"
      sha256 "a9e93a2d044be222731553268586a0f125e990fba60c2063a0a41b1e8392479e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.483/magpie-cli-linux-amd64"
      sha256 "6a6713e3dd1e4554bd67d4f4135f74c311f282fb470cc8a398aa01f711c1709e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
