cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.867"
  sha256 arm:   "7639be51ff7454f07da13d0ef1d10896d95ebfbaada5ff9e68406093e115eadd",
         intel: "e0026f2113dfa4da42b64916bb7783f3279edf8d0c687eedb86e98047956f1ec"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
