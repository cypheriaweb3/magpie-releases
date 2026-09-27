cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.186"
  sha256 arm:   "3e92426732b54ebba592a106e0ff636eacda532b2778806c8c425e2d5b134fbb",
         intel: "3b2fd9054d2f0bbd524d95da3b1b7bc7ed8757595a2d996efa82765017df4f39"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
