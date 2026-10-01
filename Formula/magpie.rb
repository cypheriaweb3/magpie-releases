class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.569/magpie-cli-darwin-arm64"
      sha256 "923bdecea52f988bf224d2105a68acca469f1bb1a45d87faaa47917e529e3f6d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.569/magpie-cli-darwin-amd64"
      sha256 "e1ebf3c01297daa40d3c09c037bc549f9731b46db9cb0b260092f8a18d0b68af"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.569/magpie-cli-linux-arm64"
      sha256 "e77f74a2563f4e687dea5605b6f10223edb98021512c1bb3ab69f497a4153d68"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.569/magpie-cli-linux-amd64"
      sha256 "84a1ad6e7eca76b33f7fb98b9d70c0997c1299772a72a1ca7283f169364ee3f8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
