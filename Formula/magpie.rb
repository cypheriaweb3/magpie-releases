class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.581/magpie-cli-darwin-arm64"
      sha256 "9954f64fbc4654e16f63260f7e1de9098baffa688b0fa2418f0815d0a2cd7b46"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.581/magpie-cli-darwin-amd64"
      sha256 "b86297ff2b4791f87994e0c72e8743d0c383902b8a640c25727a6ef8f0b1eb77"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.581/magpie-cli-linux-arm64"
      sha256 "b4141f278e9493e9c77d189b5e08cc0225c0f201cabdada2cbef7c3323cdc364"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.581/magpie-cli-linux-amd64"
      sha256 "eee7e06bcc8abb80a7b9253381227922aefc97894b46a952a919b1fa21ee44a8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
