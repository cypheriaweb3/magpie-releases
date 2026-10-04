class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.872/magpie-cli-darwin-arm64"
      sha256 "ca81ebb66944209aa80dac7bf637f9ac10d4bbe7bb63e573244cb6e984e0b800"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.872/magpie-cli-darwin-amd64"
      sha256 "6b3dd6391de74319ca3a549089b410f3748b03259fdb18b37e9cd0742a892529"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.872/magpie-cli-linux-arm64"
      sha256 "ce8bf68ef308ac9c13f4ee1d4d403f42394eb58d335a33447b5d36729ffe7268"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.872/magpie-cli-linux-amd64"
      sha256 "1c76be3bb5fc517af4de7241cb1350caf7e35f005b6e13c9d053ba6e5bc101e1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
