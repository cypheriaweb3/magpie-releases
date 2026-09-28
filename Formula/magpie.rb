class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.231/magpie-cli-darwin-arm64"
      sha256 "a49ae746e46695e557e09eed4fb2f9f7107d8144c3252a866065459e8d30c2e7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.231/magpie-cli-darwin-amd64"
      sha256 "c65286810a4f4ba3fd09055e3dfeba52505a4376b845f14a09317506e8476f0a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.231/magpie-cli-linux-arm64"
      sha256 "fa37d19f61fc65b5a471a245a2c22705a8192d351d4a5d2fb373cd04571b6a53"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.231/magpie-cli-linux-amd64"
      sha256 "5a50ed52ef39924add7dc24847d8709044b4dc69109808d2b838438f4823f462"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
