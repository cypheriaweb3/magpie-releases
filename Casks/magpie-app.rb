cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.198"
  sha256 arm:   "19a769df80f89d5d6c71c9dec8da53950048e1027c972382e94b5eb6860d2da2",
         intel: "631657ef3d239bd03cc7767a0994a1fe838a3ca8476a4515d993bf4853ae78af"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
