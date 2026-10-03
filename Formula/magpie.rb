class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.722/magpie-cli-darwin-arm64"
      sha256 "c4ab67c1a18428bb464f2de62974f5847b812beb72858a137d68643bb5a32855"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.722/magpie-cli-darwin-amd64"
      sha256 "d3a9f692ba605a8f4ab827219170b0c60be69b91712fab9261cfeba9111d2323"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.722/magpie-cli-linux-arm64"
      sha256 "02f7dcb65aa4ce18a28efb77b41e9750b91217dbe747162b94b442d902eaf6e7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.722/magpie-cli-linux-amd64"
      sha256 "e9ac8891fb982f66624a09757d18bb2a256bccb02f3bc8649d083f06ecc284d1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
