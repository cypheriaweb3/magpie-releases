cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.702"
  sha256 arm:   "efbb4eb34f440fbaf81922f8b1e51fdafd1aa1b05449d5003f96aaa8ff30da29",
         intel: "07437c463503a100e77fe207a7c06b8202defb425561b19c6e994c990594e1ee"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
