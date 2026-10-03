cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.727"
  sha256 arm:   "2805ad8f9cb6190e55446144a40f395cec3985e715b5f3b7fd8c77bd651743b8",
         intel: "59696a83b228787cf2ed15e2be010458d25e20c73ddd157fcaaf409a64b9c2ee"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
