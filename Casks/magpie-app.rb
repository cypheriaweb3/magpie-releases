cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.325"
  sha256 arm:   "a42f21ef1951066a7ec7e7d977f1219382db2dff2532c0feb406b351c62088e7",
         intel: "c67fd3cead67216e57ee4cc361d150f8fa7e531e881956e1e18de80cc531d5e2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
