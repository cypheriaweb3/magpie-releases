class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.399/magpie-cli-darwin-arm64"
      sha256 "8f839284ad54da431dc384d8c17d7bb85b348d95ffd722f2afd674f6616ec666"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.399/magpie-cli-darwin-amd64"
      sha256 "abea26bbc1ebd47e335be014add4a4068505d5f84e6dc2f8e427e315c258235e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.399/magpie-cli-linux-arm64"
      sha256 "5328961185fefd1ca086e41c54bf172f11b911cc46e31dcb77339592aea7a1d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.399/magpie-cli-linux-amd64"
      sha256 "bae3a937a0c0674b8f52ac9d3aa695e4d213621c34ee0b44717fec6bfe224e82"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
