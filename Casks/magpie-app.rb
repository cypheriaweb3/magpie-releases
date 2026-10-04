cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.880"
  sha256 arm:   "bea8ee155704889069f899e6acabdff74c78412a7f4c155d4f598b6f857bc597",
         intel: "2759a7f73535855a846deec948e238d193305af4e46d58be4493e78e99331ef5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
