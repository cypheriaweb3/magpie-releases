class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.803/magpie-cli-darwin-arm64"
      sha256 "8815524ae6a3a981521f55f206d341420912137d4acb222469912e49c660bb11"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.803/magpie-cli-darwin-amd64"
      sha256 "c0dd93d9315aba0b3fe054efb6c89ff174a9924b815f6b95233289b62d7814a2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.803/magpie-cli-linux-arm64"
      sha256 "86a3936d093042de788e2326ec59a1daadde07ad23c25907f029a3ae38986044"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.803/magpie-cli-linux-amd64"
      sha256 "88c44e475d6d198c7ee048b60b5af35c0318ecdbad32a3261643874e7edb57dd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
