class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.457/magpie-cli-darwin-arm64"
      sha256 "cf4a08e487db647e49006a85ab159b00d26374fa1bc1ff2fe6e1deac4c268b40"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.457/magpie-cli-darwin-amd64"
      sha256 "eddacef632490b51292ab3a060f8d3f81e17f047fa408d8a42aec3bea57d4428"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.457/magpie-cli-linux-arm64"
      sha256 "3b5c5dc88fa9e2d3efbd2b18acdad071913a4b826525d49ea713585c2b82cff2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.457/magpie-cli-linux-amd64"
      sha256 "33fa3bef664913424dd2ff1a9376d4f90cb193930276d19a8e91df5bf0895283"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
