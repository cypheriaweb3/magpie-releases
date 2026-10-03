class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.757/magpie-cli-darwin-arm64"
      sha256 "49122523992513e092be7c6713659785edcaa5edfe1a216b91bb7dcdaaa875a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.757/magpie-cli-darwin-amd64"
      sha256 "fd7da00bbfdb7fe1b79fea7c5060323308123f5d246aedcc89a55599c973d220"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.757/magpie-cli-linux-arm64"
      sha256 "bbaf0d1bcfce09cd9215812eb791459b979f0dfbc3bba4661a5249f5720784f9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.757/magpie-cli-linux-amd64"
      sha256 "60f6734dd2817627596f1a3e60908d91af9e3e7cf4fc1e2fe69cd208c47b8dd2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
