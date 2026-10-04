class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.833/magpie-cli-darwin-arm64"
      sha256 "4c320718bf9318686552907433681a1c24580722a2a09d6c3fcbb939aa1c5be2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.833/magpie-cli-darwin-amd64"
      sha256 "9a7bc4a0ce5be6dfd7846804c9e8148b20c3d8b4d3ca577461935a2376a836ef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.833/magpie-cli-linux-arm64"
      sha256 "3066030b026c238d7293f5f7e4da1c135c62f1c3289b657479adee38c3c85c00"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.833/magpie-cli-linux-amd64"
      sha256 "5884fe90f157f994a81e0e3667009fb845924618329ec9a3ea3235829761e22a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
