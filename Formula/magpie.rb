class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.777/magpie-cli-darwin-arm64"
      sha256 "dc23eba90e5b18d59c66b1abecafb9e68e1dfd33cfce0b12d06be9e95fc135cc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.777/magpie-cli-darwin-amd64"
      sha256 "4daa36de8fc91b0db1f097a0987263da9ac6a9f9c0fb0654b584a1b3bebc3fd5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.777/magpie-cli-linux-arm64"
      sha256 "6ae4abd7bcc44ce97b84c2585dcc68261195a794ee6460e82a48c3a9c03c7141"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.777/magpie-cli-linux-amd64"
      sha256 "474f707176e80f30886e501a3dde3f6ff838632023478a4b6a9cd6357ff53927"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
