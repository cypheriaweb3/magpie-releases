cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.494"
  sha256 arm:   "92d5dbc6351a70bcbb7012ebec326765b825a1d77761600f42f108f1a54bc9c3",
         intel: "43571d1c510955f067efc76a3540fe5f3e736a7941f751778294ad7fb812abc3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
