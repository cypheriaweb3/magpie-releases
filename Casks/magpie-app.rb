cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.479"
  sha256 arm:   "0ec3d3cad3dbc08fec90c8da89f0c119b54220cf63c06bb3bc7a049adc34a9be",
         intel: "7f61be5058025b57dd12d734241b6ea1051c16cfaa9f5808456d2a149397643b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
