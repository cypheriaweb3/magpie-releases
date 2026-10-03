class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.704/magpie-cli-darwin-arm64"
      sha256 "32dbcb68241ae7eb0fd8f4afaef06640e22d84dcdbc1da4e6d8074f4157bcb97"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.704/magpie-cli-darwin-amd64"
      sha256 "bd262be9a82bb86788ac8fdc47387d08299938858e2595ddf9842c28fe7d9340"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.704/magpie-cli-linux-arm64"
      sha256 "ad882385d100a6b28c25e0ba043fb8e10a8decc50863a46c7a55ffe6fe1a2881"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.704/magpie-cli-linux-amd64"
      sha256 "f32a35ab00055fe8fdecbc41753c70ba109756ebc28c26e3a79c04ca7aebdb6b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
