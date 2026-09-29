cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.412"
  sha256 arm:   "376b35d3606bcab329050826b3fb12d21c5a8b31ab8295b232ee50fc89ec8810",
         intel: "ee7d13b6f150c76b46b5183d985bd1fe9db687c69d9f12731b08acbbbc2dc4aa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
