--------------------------------------------------
-- SCRIPT DESENVOLVIDO PELA RS STORE (/r#1820)
-- SISTEMA FREE [ - ] NÃO VENDA
-- SCRIPT DESENVOLVIDO PELA RS STORE (/r#1820)
--------------------------------------------------


-- MAIS SCRIPTS EM: https://discord.gg/mxT5V6aTAd

rs = {}

rs.creative = true
rs.notify_timer = 9000 -- default
rs.notify_error_colour = "negado" -- default
rs.notify_error_message = "Você não tem permissão para abrir esse armário" -- default
rs.notify_ped_message = "Você não pode acessar o armário com essa skin" -- default

rs.anim = {"clothingtie","try_tie_negative_a"} -- default 
rs.switch_timer = 3500 -- default 
rs.progress_event = "Progress" -- default


rs.fardamentos = {
    ["cloakroom1"] = {
        ["coords"] = vec3(0,0,0),
        ["permission"] = "your_permission",
        ["clothes"] = {
            ["Masculino"] = {
                ["roupa1"] = {
                    ["name"] = "title",
                    ["description"] = "description",
                    ["preset"] = {
                        ["hat"] = { item = 0, texture = 0 },
                        ["pants"] = { item = 0, texture = 0 },
                        ["vest"] = { item = 0, texture = 0 },
                        ["bracelet"] = { item = 0, texture = 0 },
                        ["decals"] = { item = 0, texture = 0 },
                        ["mask"] = { item = 0, texture = 0 },
                        ["shoes"] = { item = 0, texture = 0 },
                        ["tshirt"] = { item = 0, texture = 0 },
                        ["torso"] = { item = 0, texture = 0 },
                        ["accessory"] = { item = 0, texture = 0 },
                        ["watch"] = { item = 0, texture = 0 },
                        ["arms"] = { item = 0, texture = 0 },
                        ["glass"] = { item = 0, texture = 0 },
                        ["ear"] = { item = 0, texture = 0 },
                        ["backpack"] = { item = 0, texture = 0 },
                    },
                },
                ["roupa2"] = {
                    ["name"] = "title",
                    ["description"] = "description",
                    ["preset"] = {
                        ["hat"] = { item = 0, texture = 0 },
                        ["pants"] = { item = 0, texture = 0 },
                        ["vest"] = { item = 0, texture = 0 },
                        ["bracelet"] = { item = 0, texture = 0 },
                        ["decals"] = { item = 0, texture = 0 },
                        ["mask"] = { item = 0, texture = 0 },
                        ["shoes"] = { item = 0, texture = 0 },
                        ["tshirt"] = { item = 0, texture = 0 },
                        ["torso"] = { item = 0, texture = 0 },
                        ["accessory"] = { item = 0, texture = 0 },
                        ["watch"] = { item = 0, texture = 0 },
                        ["arms"] = { item = 0, texture = 0 },
                        ["glass"] = { item = 0, texture = 0 },
                        ["ear"] = { item = 0, texture = 0 },
                        ["backpack"] = { item = 0, texture = 0 },
                    },
                },  
            },
            ["Feminino"] = {
                ["roupa1"] = {
                    ["name"] = "title",
                    ["description"] = "description",
                    ["preset"] = {
                        ["hat"] = { item = 0, texture = 0 },
                        ["pants"] = { item = 0, texture = 0 },
                        ["vest"] = { item = 0, texture = 0 },
                        ["bracelet"] = { item = 0, texture = 0 },
                        ["decals"] = { item = 0, texture = 0 },
                        ["mask"] = { item = 0, texture = 0 },
                        ["shoes"] = { item = 0, texture = 0 },
                        ["tshirt"] = { item = 0, texture = 0 },
                        ["torso"] = { item = 0, texture = 0 },
                        ["accessory"] = { item = 0, texture = 0 },
                        ["watch"] = { item = 0, texture = 0 },
                        ["arms"] = { item = 0, texture = 0 },
                        ["glass"] = { item = 0, texture = 0 },
                        ["ear"] = { item = 0, texture = 0 },
                        ["backpack"] = { item = 0, texture = 0 },
                    },
                },
                ["roupa2"] = {
                    ["name"] = "title",
                    ["description"] = "description",
                    ["preset"] = {
                        ["hat"] = { item = 0, texture = 0 },
                        ["pants"] = { item = 0, texture = 0 },
                        ["vest"] = { item = 0, texture = 0 },
                        ["bracelet"] = { item = 0, texture = 0 },
                        ["decals"] = { item = 0, texture = 0 },
                        ["mask"] = { item = 0, texture = 0 },
                        ["shoes"] = { item = 0, texture = 0 },
                        ["tshirt"] = { item = 0, texture = 0 },
                        ["torso"] = { item = 0, texture = 0 },
                        ["accessory"] = { item = 0, texture = 0 },
                        ["watch"] = { item = 0, texture = 0 },
                        ["arms"] = { item = 0, texture = 0 },
                        ["glass"] = { item = 0, texture = 0 },
                        ["ear"] = { item = 0, texture = 0 },
                        ["backpack"] = { item = 0, texture = 0 },
                    },
                },
            }
        }
    },

    ["cloakroom2"] = {
        ["coords"] = vec3(0,0,0),
        ["permission"] = "your_permission",
        ["clothes"] = {
            ["Masculino"] = {
                ["roupa1"] = {
                    ["name"] = "title",
                    ["description"] = "description",
                    ["preset"] = {
                        ["hat"] = { item = 0, texture = 0 },
                        ["pants"] = { item = 0, texture = 0 },
                        ["vest"] = { item = 0, texture = 0 },
                        ["bracelet"] = { item = 0, texture = 0 },
                        ["decals"] = { item = 0, texture = 0 },
                        ["mask"] = { item = 0, texture = 0 },
                        ["shoes"] = { item = 0, texture = 0 },
                        ["tshirt"] = { item = 0, texture = 0 },
                        ["torso"] = { item = 0, texture = 0 },
                        ["accessory"] = { item = 0, texture = 0 },
                        ["watch"] = { item = 0, texture = 0 },
                        ["arms"] = { item = 0, texture = 0 },
                        ["glass"] = { item = 0, texture = 0 },
                        ["ear"] = { item = 0, texture = 0 },
                        ["backpack"] = { item = 0, texture = 0 },
                    },
                },
                ["roupa2"] = {
                    ["name"] = "title",
                    ["description"] = "description",
                    ["preset"] = {
                        ["hat"] = { item = 0, texture = 0 },
                        ["pants"] = { item = 0, texture = 0 },
                        ["vest"] = { item = 0, texture = 0 },
                        ["bracelet"] = { item = 0, texture = 0 },
                        ["decals"] = { item = 0, texture = 0 },
                        ["mask"] = { item = 0, texture = 0 },
                        ["shoes"] = { item = 0, texture = 0 },
                        ["tshirt"] = { item = 0, texture = 0 },
                        ["torso"] = { item = 0, texture = 0 },
                        ["accessory"] = { item = 0, texture = 0 },
                        ["watch"] = { item = 0, texture = 0 },
                        ["arms"] = { item = 0, texture = 0 },
                        ["glass"] = { item = 0, texture = 0 },
                        ["ear"] = { item = 0, texture = 0 },
                        ["backpack"] = { item = 0, texture = 0 },
                    },
                },  
            },
            ["Feminino"] = {
                ["roupa1"] = {
                    ["name"] = "title",
                    ["description"] = "description",
                    ["preset"] = {
                        ["hat"] = { item = 0, texture = 0 },
                        ["pants"] = { item = 0, texture = 0 },
                        ["vest"] = { item = 0, texture = 0 },
                        ["bracelet"] = { item = 0, texture = 0 },
                        ["decals"] = { item = 0, texture = 0 },
                        ["mask"] = { item = 0, texture = 0 },
                        ["shoes"] = { item = 0, texture = 0 },
                        ["tshirt"] = { item = 0, texture = 0 },
                        ["torso"] = { item = 0, texture = 0 },
                        ["accessory"] = { item = 0, texture = 0 },
                        ["watch"] = { item = 0, texture = 0 },
                        ["arms"] = { item = 0, texture = 0 },
                        ["glass"] = { item = 0, texture = 0 },
                        ["ear"] = { item = 0, texture = 0 },
                        ["backpack"] = { item = 0, texture = 0 },
                    },
                },
                ["roupa2"] = {
                    ["name"] = "title",
                    ["description"] = "description",
                    ["preset"] = {
                        ["hat"] = { item = 0, texture = 0 },
                        ["pants"] = { item = 0, texture = 0 },
                        ["vest"] = { item = 0, texture = 0 },
                        ["bracelet"] = { item = 0, texture = 0 },
                        ["decals"] = { item = 0, texture = 0 },
                        ["mask"] = { item = 0, texture = 0 },
                        ["shoes"] = { item = 0, texture = 0 },
                        ["tshirt"] = { item = 0, texture = 0 },
                        ["torso"] = { item = 0, texture = 0 },
                        ["accessory"] = { item = 0, texture = 0 },
                        ["watch"] = { item = 0, texture = 0 },
                        ["arms"] = { item = 0, texture = 0 },
                        ["glass"] = { item = 0, texture = 0 },
                        ["ear"] = { item = 0, texture = 0 },
                        ["backpack"] = { item = 0, texture = 0 },
                    },
                },
            }
        }
    },
}

-- MAIS SCRIPTS EM: https://discord.gg/mxT5V6aTAd

--------------------------------------------------
-- SCRIPT DESENVOLVIDO PELA RS STORE (/r#1820)
-- SISTEMA FREE [ - ] NÃO VENDA
-- SCRIPT DESENVOLVIDO PELA RS STORE (/r#1820)
--------------------------------------------------