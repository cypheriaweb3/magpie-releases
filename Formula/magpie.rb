class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.540/magpie-cli-darwin-arm64"
      sha256 "80435dc08d5f9828dfeee6a525d1e7d682d68e31f41bf503ebd7e3f0d7febd92"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.540/magpie-cli-darwin-amd64"
      sha256 "b6972b4b6b43ae65b420ac73dff450077db701b38754d0cabcc3d3ca2a565610"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.540/magpie-cli-linux-arm64"
      sha256 "2f5cd6a5fc1d61be0ce68390316a55d097792db0ac4d63f1a2063d1ea61050a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.540/magpie-cli-linux-amd64"
      sha256 "f6a7551cbc1d4504f933ed6bf251320dbcc51eadb2167563a715e88438efa0be"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
