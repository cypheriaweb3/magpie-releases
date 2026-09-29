class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.362/magpie-cli-darwin-arm64"
      sha256 "53770f34a8869eed4edb5a1017ac4539486508266736cd6e7ce44880eb0e45a7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.362/magpie-cli-darwin-amd64"
      sha256 "4fdf028caaf65bf74acf27cb2b83fb3959474246697c07e97462280deafaa5cf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.362/magpie-cli-linux-arm64"
      sha256 "8526028f5843ac9c7d92981619bb33b727341c2f4e83bef1f20ecff325e61bd8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.362/magpie-cli-linux-amd64"
      sha256 "df7f637532a474ef959f56968f5516322c90e83ccbfd64fee8d06e747d0896ef"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
