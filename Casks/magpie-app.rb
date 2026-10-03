cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.698"
  sha256 arm:   "c85a0f94a1366ec959e9d00ddf28efdc6c8e99cafd9f25dfe244f839ef461873",
         intel: "fd39eedf98a60b73f92f90b130822a4100112c27439e9f03238d876ffc7e096f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
