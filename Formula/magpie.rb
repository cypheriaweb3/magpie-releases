class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.647/magpie-cli-darwin-arm64"
      sha256 "f52de4a36155cf5acd3f9686ede53c7794e9fdb33da11d985bbdfc2bbc236feb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.647/magpie-cli-darwin-amd64"
      sha256 "dc23ed53d44414a9a467dd6981fdee87cc9f66c9c18a564c7f460466e3ba5b6a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.647/magpie-cli-linux-arm64"
      sha256 "5ca91aa88748a3fe4aa06151457b96c7cbd3189554ebc0fd62dddafea94e618d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.647/magpie-cli-linux-amd64"
      sha256 "f39d798792051cbcfc0723d073cbbeaf3138c5b9be346b87bde56c7dac22979f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
