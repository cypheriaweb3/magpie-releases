class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.602/magpie-cli-darwin-arm64"
      sha256 "afdf37fb46e0f38ac8fafc73a3bef3d5c7debf9f7b38cdbeb63afda223bb6021"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.602/magpie-cli-darwin-amd64"
      sha256 "4975b63c46176ed5410154e36aa0ef21d36b5d33afdddea3ef8d7c3f0467a89b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.602/magpie-cli-linux-arm64"
      sha256 "75e82b3ef9686d526a90d06adbc92f01b927ead33eaf7834b239f6238a1cb2c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.602/magpie-cli-linux-amd64"
      sha256 "6d992e7b9c9dc15a3d39d34d9595b21db6a5acad29a001091f61a5d5bb07df2d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
