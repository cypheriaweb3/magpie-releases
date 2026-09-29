class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.424/magpie-cli-darwin-arm64"
      sha256 "2038ad0bf03abe21097a7bcc70ca328c655c8148d87827074d0594e1b683b170"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.424/magpie-cli-darwin-amd64"
      sha256 "f8838fe3fc1ebe8f9ce25dca7784f2b8751a5830b51d4b1eb91d815b833514f1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.424/magpie-cli-linux-arm64"
      sha256 "df177a83993b1dd1c2fdc5242609b33dbab1aeb17267b58e9c9f323ebe177f86"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.424/magpie-cli-linux-amd64"
      sha256 "bf734c293824b601e233a8ec7e3571759a04337c71acac9c3fa08a8647352585"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
