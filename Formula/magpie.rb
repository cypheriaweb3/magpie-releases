class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.211/magpie-cli-darwin-arm64"
      sha256 "bbf4ef446d50719542192be7500db47051d0e9bde696f6fb23f8fad2d436ca09"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.211/magpie-cli-darwin-amd64"
      sha256 "0b29701dd7807dae95817a90df84f1d0f7628e806f942e418b17400c54ed39f2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.211/magpie-cli-linux-arm64"
      sha256 "c005a6de87973e27e32a292f4594f07ed8865a3e48e074fa32ae7d42e9fe455c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.211/magpie-cli-linux-amd64"
      sha256 "27f221bb8e7e669822459b6e128c6f6a4f1d1244dba489cd76fcb0342ee7df38"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
