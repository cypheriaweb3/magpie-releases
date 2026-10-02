class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.668/magpie-cli-darwin-arm64"
      sha256 "cb55651ac1ea2045a3e6e0b324fd49dfcb5f7a1b86108b9a016f20c8177f1504"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.668/magpie-cli-darwin-amd64"
      sha256 "c968d537e675ad3fa3953ebf3fa6053f1507dbdc160be87f8a8bacf47f2137a6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.668/magpie-cli-linux-arm64"
      sha256 "8eddf9cdefa442e2d93d986d0ac62c2a648df1e71d3114e09f83886c4eb580ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.668/magpie-cli-linux-amd64"
      sha256 "8404eb0d47aad0889c34bbd326714b9d4b003660c176159f2781ec2eb3c35002"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
