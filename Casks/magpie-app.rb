cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.385"
  sha256 arm:   "978ebc24fa6003c11d68a5d0186e213c251d519b64d5e62d60837b11e6885755",
         intel: "4ee3355ad8510cd8bc4451845302a8030a829479550c4cdf3b9d1c3f4f6f73b1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
